param(
    $username,
    $fullname,
    $description
)

$userPassword = ConvertTo-SecureString 'werty' -AsPlainText -Force

New-LocalUser $username -Password $userPassword -FullName $fullname -Description $description