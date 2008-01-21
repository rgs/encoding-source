#!perl

use strict;
use warnings;
use encoding::source 'euc-jp';
use Test::More tests => 4;

my @a;

while (<DATA>) {
    chomp;
    tr/��-��-��/��-��-��/;
    push @a, $_;
}

is(scalar @a, 3);
is($a[0], "�����DATA�դ�����Ϥ�ɤ�ΤƤ��ȥǥ���");
is($a[1], "���ܸ쥬�������Ѵ��ǥ��륫");
is($a[2], "�ɥ����ΤƤ��ȥ򥷥ƥ��ޥ���");

__DATA__
�����DATA�ե�����ϥ�ɥ�Υƥ��ȤǤ���
���ܸ줬�������Ѵ��Ǥ��뤫
�ɤ����Υƥ��Ȥ򤷤Ƥ��ޤ���
