$a = 0
$list = Get-Content list.txt
Foreach ($row in $list)
{
if ($row -gt $prevrow)
{
  $a +=1
} $prevrow = $row
}
echo $a
