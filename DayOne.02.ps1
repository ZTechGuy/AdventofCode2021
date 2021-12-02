$num = 0
$place = 0
$list = Get-Content list.txt
$count = $list.Count
$newlist = @()
foreach ($row in $list)
{
  if ($place+2 -lt $Count)
    {
      $sum = ($list[$place..($place+2)] | measure-object -sum).sum
      $sum2 = ($list[$place+1..($place+3)] | measure-object -sum).sum
    if ($sum2 -gt $sum)
    {
      $num += 1
    } $place += 1
  }
}
echo $num
