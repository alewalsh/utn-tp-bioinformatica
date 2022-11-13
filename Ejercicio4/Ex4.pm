#!/usr/bin/perl -lw

use Bio::SearchIO;
use Bio::DB::SwissProt;

$cantArgs = $#ARGV + 1;
if ($cantArgs != 2) {
    print "\nUsage: Ex4.pm blast_file description_pattern\n";
    exit;
}

$archivoBLAST = $ARGV[0];
$patronBuscado = $ARGV[1];
 
$blast_report = new Bio::SearchIO(-format => 'blast', -file => $archivoBLAST);
$gb = Bio::DB::SwissProt->new();
$fastaio = Bio::SeqIO->new(-file => '>resultado.fas', -format => 'fasta' );

while( $result = $blast_report->next_result ) {
    while( $hit = $result->next_hit ) {
        if (index($hit->description, $patronBuscado) != -1) {
          print $hit->accession;
          $fastaio->write_seq($gb->get_Seq_by_version($hit->accession));
        } 
    }
}
