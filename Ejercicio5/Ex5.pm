#!/usr/bin/perl -w

use Bio::SeqIO;
use Bio::Factory::EMBOSS;

$seqio_gb = Bio::SeqIO -> new(-file => "sequence.gb", -format => "genbank");
$seq_gb = $seqio_gb -> next_seq;

$getorf = new Bio::Factory::EMBOSS -> program('getorf');
%getorfsinput = (-sequence => $seq_gb,-outseq => "orfsResult.fas");
$getorf->run(\%getorfsinput);

$patmatmotifs = new Bio::Factory::EMBOSS -> program('patmatmotifs'); 
%patinput = (-sequence => $seq_gb, -sdbname1 => "prosite.dat", -full => 1, -outfile => "result.patmatmotifs");
$patmatmotifs->run(\%patinput);
