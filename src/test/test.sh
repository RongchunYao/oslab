#!/usr/bin/perl  
open(SIG, $ARGV[0]) || die "open $ARGV[0]: $!";

$n = sysread(SIG, $buf, 100*1024);

if($n > 100 * 1024){
  print STDERR "ERROR:test binary file too large:\
      $n bytes (max 102400)\n";
  exit 1;
}

print STDERR "test binary file is $n bytes (max 102400)\n";

$m = $n % (512);
$s = 512 - $m;
$p = 102400 - $n;

print STDERR "test binary file size n = $n\n";
print STDERR "test binary file sectors num m = $m\n";
print STDERR "test binary file added $p bytes s = $s\n";

$buf .= "\0" x $p;


open(SIG, ">$ARGV[0]") || die "open >$ARGV[0]: $!";
print SIG $buf;
close SIG;


open(SIG, $ARGV[0]) || die "open $ARGV[0]: $!";

$n = sysread(SIG, $buf, 100*1024);

if($n > 100 * 1024){
  print STDERR "ERROR:test binary file large: $n bytes (max 102400)\n";
  exit 1;
}

print STDERR "test binary file is $n bytes (max 102400)\n";
print STDERR "*********************************************\n";
print STDERR "*********************************************\n";
print STDERR "*********************************************\n";
close SIG;
