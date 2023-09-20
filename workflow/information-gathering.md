# Information Gathering

## Files

### Delete all lines beginning with `#`

```bash
grep -v '^[[:space:]]*#' example.txt > output.txt
```

### Find file encoding

```bash
file -bi <file_name>
```

### Calculate total size of multiple files with similar name

```bash
find <file_path> -type f -name 'sample_file-1*.csv' -exec du -ch {} + | tail -n1
```

### Find all files in folder with `<string>` recursivly

```bash
grep -iR "<string>" <folder>
```

### Find all files with name

```bash
find . -type f -name "foo*"
```

### Find `<string>` in all files and list occurings

```bash
find <file_path> -type f -exec grep -iHn <string> {} \;
```

### Find `<string>` in all files with name and list occurings

```bash
find <file_path> -name ".gitlab-ci.yml" -exec grep -iHn <string> {} \;
```

## Compression

### Compress multiple files into .tar.gz

```bash
#! compress multiple files
#! go directly into folder with files, 
#! because otherwise you will have the folder structure
#! within your compressed file
tar cvzf trip.tar.gz trip_20*.csv
```

### Deompress .tar.gz file

```bash
tar xvzf <file_name>.tar.gz -C <path_to_extract>
```

### Deompress .xz file

```bash
unxz <file_name>.xz
```

### Compress all files into .7z

```bash
# compress all files incl hidden without including folder root
7za a <archive_name>.7z <path_to_directory>/.
```

## Network

## Check for open tcp port

```bash
nc -v <ip|domain> <port>
```

## Check for open udp port

```bash
nc -vz -u <ip|domain> <port>
```
