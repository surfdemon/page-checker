#!/usr/bin/perl
use strict;
use warnings;

use LWP::Simple;

print "What site would you like to check?";
my $site = <STDIN>;
print "What file would you lke to save to?";
my $file = <STDIN>;
my $tmpfile = "tmp-" . $file;
my $content = ""

print "$file"

$content = getstore($site, $file);
die "Couldn't get it!" unless defined $content;

my ($content_type, $length, $time, $expires, $server) = head($site);
die "Couldn't get it!" unless defined $content_type;

print "Site is $site\n";
print "file is $file\n";
print "tmp file is $tmpfile\n";
if($content){print "The status is $content\n";}
if($content_type){print "The content type is $content_type\n";}
if($length){print "The document length is $length\n";}
if($time){print "The modified time is $time\n";}
if($expires){print "The expires is $expires\n";}
if($server){print "The server is $server\n";}
