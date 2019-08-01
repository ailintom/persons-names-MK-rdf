# persons-names-MK-rdf
A database of Middle Kingdom names: rdf mappings

## This repository  
This repository contains R2RML mappings for converting the dataset Persons and Names of the Middle Kingdom from MySQL to RDF, based on the PNM ontology, available at https://pnm.uni-mainz.de/ontology/  

## Data preparation
Source data is available under [doi:10.5281/zenodo.1411391](http://dx.doi.org/10.5281/zenodo.1411391)
Please execute  	`prepare_data.sql` to prepare the data before converting the data to RDF.
This set of instructions creates necessary temporary tables and cleans up some data

## Tools for tranforming the data from MySQL to RDF using  R2RML mappings
* [db2triples](https://github.com/antidot/db2triples) is slow but otherwise works fine and is fully compatible with the PNM R2RML mapping; this tool is used to produce the RDF dump with the Persons and Names of the Middle Kingdom

* [Morph-RDB](https://github.com/oeg-upm/morph-rdb) has issues with turtle escape codes and rr:language

* [ontop](https://github.com/ontop/ontop) is not useable due to [lack of support for PredicateMap](https://github.com/ontop/ontop/issues/107); another issue is the [lack of support for the MySQL IF function](https://github.com/JSQLParser/JSqlParser/issues/100)  in JsqlParser, on which ontop relies 
