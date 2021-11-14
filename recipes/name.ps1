$textInfo = (Get-Culture).TextInfo
$Output = Get-ChildItem -Exclude name.ps1, index.md | Sort-Object | ForEach-Object {
    $BaseName = $_.BaseName -replace '(\s)','%20'
	$TitleName = $textInfo.ToTitleCase($_.BaseName)

    "- [$TitleName](https://levi-middleton.github.io/writings/recipes/$BaseName)"
}
$Output | Out-File index.md