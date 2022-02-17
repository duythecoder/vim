$dir = "D:\CP\"
$nm = $args[0]
$cpp = $args[1]
$fol = [System.String]::Concat($dir,$nm)
New-Item -Path $fol -ItemType Directory
$fp = [System.String]::Concat('"D:/CP/',$nm,"/",$cpp,'.exe"')
$dcp = [System.String]::Concat($dir, $nm, "\", $cpp, ".cpp")
Copy-Item -Path D:\CP\temps\temp.cpp -Destination $dcp