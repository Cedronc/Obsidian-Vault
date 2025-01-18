--- 
**TLDR:** The algorithm used commonly for external sorting.

! Important: Omdat dit algoritme gebruik maakt van hulp files zal dit bestand 2 x p aantal hulp files nodig hebben.

# Terms
Counted runs
- **r (run length):** how big the buffer will be
- **p (auxiliary files):** how many files will be created to split the original file into. Total amount of files will = 2 x p. Because Merging will also need 'p' new auxiliary files.
- **Distribution auxiliary files**: Files that the to be sorted file is split across.
- **Merge auxiliary files:** Files used to merge the sorted runs spread over distribution files.

Distribution and merge files are also called input and output files respectively (Before collection, explained in collection phase). 
# Phases
## Distribution

## Merging 
Reads data from all the runs from every auxiliary file and generates longer runs on again a new auxiliary file. 
*Eg. first merge the first run from every auxiliary file is collected and merged into one run.*

This is repeated until all original auxiliary input files are empty and merged into one singel sorted run. 

## Collection
Collects the merge auxiliary files and overwrites the original file. (Zij hebben geen optimale implementatie.)
When done with collecting and emptying distribution (input) files and switching the input files to output files. 

# Examples

## Different settings
Here there will be 2 auxiliary distribution files and 2 merge files. The runs will consist of vectors of size 'r'.

![[Pasted image 20241204225849.png]]



