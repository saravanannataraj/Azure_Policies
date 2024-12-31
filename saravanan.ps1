


# Updated by saravanan
# get the azure policy related to storate
(get-azpolicyAlias -namespacematch 'Microsoft.storage').aliases

# Updated by saravanan
(get-azpolicyAlias -namespacematch 'Microsoft.storage').aliases | ? { $_.DefaultPath -like "*public*"}