#!/usr/bin/perl -l

use strict;
use Bio::SeqIO;

my $usage = "Ex1.pm <file>.gb";
my $file = shift or die $usage;
my $io_obj = Bio::SeqIO->new(-file => "$file", -format => "genbank");
my $outseq = Bio::SeqIO->new(-format => "fasta", -file => ">result.fas");

my $seq = $io_obj->next_seq;

#print "Sequence - $seq \n";
my @proteins = ();
my $cantProteinas = 0;
my $frame = 0;
my $maxFrame = 2; #solo se puede usar los valores 0, 1 o 2. Corresponden al frame 1, 2 y 3 respectivamente
while ($frame <= $maxFrame)
{ 
    my $frame_proteins = $seq->translate(-frame=>$frame);
    #print "Frame protein - $frame_proteins \n";
	$outseq->write_seq($frame_proteins);

    my $reverse_frame_proteins = $seq->revcom->translate(-frame=>$frame);
    #print "Reverse frame protein - $reverse_frame_proteins \n";
	$outseq->write_seq($reverse_frame_proteins);

    $frame++
}
