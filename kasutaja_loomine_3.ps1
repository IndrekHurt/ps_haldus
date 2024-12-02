$users = Import-Csv "C:\Users\Indrek\ps_haldus\users.csv" -Encoding Default -Delimiter ";"
foreach ($user in $users) {
    $username = $user.Username
    $fullname = $user.Fullname
    $description = $user.Description
    $password = $user.Password | ConvertTo-SecureString -AsPlainText -Force
    New-LocalUser $username `        -Password $usePassword `        -FullName $fullname `        -Description $description        -ErrorAction SilentlyContinue}