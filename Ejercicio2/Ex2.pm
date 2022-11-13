#!/usr/bin/perl -l
use strict;
use Bio::Tools::Run::StandAloneBlastPlus;

my $factory = Bio::Tools::Run::StandAloneBlastPlus->new(-db_data => "swissprot", -create => 1);

$factory->blastp(-query => "result.fas", -outfile => "localReport.bls");

$factory->cleanup();
