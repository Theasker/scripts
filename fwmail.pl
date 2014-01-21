#!/usr/bin/perl -w

my $usuario = "theasker";
my $pass = "Pride and Joy"; 
my $mail = "theasker\@gmail.com";
my $server = "smtp.gmail.com:587";
my $asunto;
my @lines;

while (<STDIN>) {
  if ($_ =~ /Subject:/ ) {
    $asunto = $_;
    push(@lines, $_);
  } else {
    push(@lines, $_);
  }
}

exec "sendEmail", "-t", "$mail", "-f", "$mail", "-s", "$server", "-xu", "$usuario",
"-xp", "$pass", "-u", "$asunto", "-m", "@lines", "-o", "tls=yes";

