# Solidity-Eternal-Proxy


## Storage Contracts:

1. ArithmeticStorage (Storage contract - storage for Arithmetic)
2. ArithmeticAdvancedStorage (Storage contract - storage for ArithmeticAdvanced)

## Logic Contracts:

1. Arithmetic 
   - Logic contract containing add and subtract operations
   - inherits ArithmeticStorage

2. ArithmeticAdvanced 
   - Logic contract containing advanced operations - multiplication
   - inherits ArithmeticAdvancedStorage

## ProxyLogic Contract:

1. ArithmeticProxy
   - Proxy contract for Arithmetic
   - inherits 

```
User ---- tx --- ArithmeticProxy
                        |
                        | ----------> Arithmetic
                        |
                        |-----------> Arithmetic_v1
                        |
                        |-----------> Arithmetic_v2
```

```
    =========================     ============================     -------     =======================
    ║  ArithmeticStorage     ║   ║ UpgradeabilityOwnerStorage ║   | Proxy |   ║ UpgradeabilityStorage ║
     =========================     ============================     -------     =======================
              ↑            ↑                            ↑                ↑            ↑
              |            |                            |            ---------------------
          ----------       |                            |           | UpgradeabilityProxy |
         | Arithmetic |    |                            |            ---------------------
          ----------       |                            |               ↑
              ↑            |                       --------------------------
              |            |                      | OwnedUpgradeabilityProxy |
          --------------   |                       --------------------------
         | Arithmetic_v1|  |                             ↑
          --------------   |______ -------------------------
                                  | ArithmeticStorageProxy |
                                   -------------------------
```

## Proxy Contract:

1. Proxy (Proxy with default callback and assembly code)
2. UpgradeabilityStorage (Contains version and implementation address of underlying logic-contract)
3. UpgradeabilityProxy (inherits Proxy and UpgradeabilityStorage)


## Reference:

- https://blog.openzeppelin.com/proxy-patterns/

- Eternal Storage Pattern: 
  https://blog.openzeppelin.com/smart-contract-upgradeability-using-eternal-storage/

- Open-zeppelin SDK for Proxy contracts (Updated):
  https://docs.openzeppelin.com/sdk/2.6/pattern.html

- https://ethereum.stackexchange.com/questions/50671/upradeable-proxy-library-throws-on-any-function-how-to-connect-proxy-and-mainco  