# AIP. Aave <> Starknet. Phase I (Part 2)

Implementation of the Aave Improvement Proposal (AIP) payload for the release of the second schedule payment on the Aave <> Starknet Phase I project.

Discussion and payment schedule [HERE](https://governance.aave.com/t/request-for-approval-aave-starkware-phase-i/7145#payments-8).

Approval by the Aave community:

- [Snapshot](https://snapshot.org/#/aave.eth/proposal/0x56eb24ad5e2811990899653155caee022a80f3800e51b2b37ecc9254a0a51335)
- [On-chain governance proposal](https://app.aave.com/governance/proposal/61/)

## Proposal specification

The proposal payload does the following:

- Withdrawal of 92'500 to the Aave <> Starknet recipient account

## Setup
Create a `.env` file following the `.env.example`, adding a Ethereum node URL (Alchemy, Infura)


### Dependencies

```
make update
```

### Compilation

```
make build
```

### Testing

```
make test
```

