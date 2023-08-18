# persons-names-MK-rdf
A database of Middle Kingdom names: rdf mappings

## This repository  
This repository contains R2RML mappings for converting the dataset Persons and Names of the Middle Kingdom from MySQL to RDF, based on the PNM ontology, available at https://pnm.uni-mainz.de/ontology/  

## Data preparation
Source data is available under [doi:10.5281/zenodo.1411391](http://dx.doi.org/10.5281/zenodo.1411391)
Please execute  	`prepare_data.sql` to prepare the data before converting the data to RDF.
This set of instructions creates necessary temporary tables and cleans up some data

## Tools for tranforming the data from MySQL to RDF using  R2RML mappings
* [db2triples](https://github.com/antidot/db2triples) is slow but otherwise works fine and is fully compatible with the PNM R2RML mapping; this tool is used to produce the RDF dump with the Persons and Names of the Middle Kingdom. Regrettably, the repository is no longer available. 

* [ontop](https://github.com/ontop/ontop) now also features full support of MariaDB and other technologies used in PNM.
In order to convert PNM data from a relational database to rdf, you can run ontop as follows:
```
ontop materialize -p pnm.properties -f turtle -m "pnm.r2rml4.ttl" -o out.ttl
```
Here also a `pnm.properties` file used for this conversion: 
```
jdbc.url = jdbc:mariadb://localhost:3306/www10000ver4
jdbc.driver=org.mariadb.jdbc.Driver
jdbc.user=user
jdbc.password=password
ontop.inferDefaultDatatype = true
```
[MariaDB JDBC](https://mariadb.com/kb/en/about-mariadb-connector-j/) connector should be placed in the folder jdbc in your installation of ontop beforehand.
 

* [Morph-RDB](https://github.com/oeg-upm/morph-rdb) is faster than db2triples.
