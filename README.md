# Bank Tech Test
```
  ░░░░░░░░░░░░░░████░░░░░░░░░░░░░░
  ░░░░░░░░▄▄████████▄▄░████░░░░░░░
  ░░░░░░▄██████████████████░░░░░░░
  ░░░░░▄█████▀░░████▀██████░░░░░░░
  ░░░░░██████░░░████░░▀████░░░░░░░
  ░░░░░███████▄▄████░░░▀███░░░░░░░
  ░░░░░░████████████▄▄▄░░░░░░░░░░░
  ░░░░░░░▀███████████████▄░░░░░░░░
  ░░░░░░░░░░░▀▀████████████▄░░░░░░
  ░░░░░███▄░░░░░████▀████████░░░░░
  ░░░░░█████░░░░████░░▀██████░░░░░
  ░░░░░██████▄░░████░░▄██████░░░░░
  ░░░░░████████████████████▀░░░░░░
  ░░░░░████░▀███████████▀▀░░░░░░░░
  ░░░░░▀▀▀░░░░░░████▀▀░░░░░░░░░░░░
  ░░░░░░░░░░░░░░████░░░░░░░░░░░░░░     
```
## How To Use

## User Stories
```
As a user,
So that I can make use of Kavita's super-efficient IRB bank,
I want to be able to create an account.

As a user,
So that I can top up my bank balance,
I want to be able to deposit money into my account.

As a user,
So that I can spend money on nice things,
I want to be able to withdraw money from my account.

As a user,
So that I can know how much money I have left,
I want to be able to view my account balance after each transaction.

As a user,
So that I can budget more effectively (HAH),
I want to be able to print my bank statement.

As a user,
So that I know when I spent what,
I want my bank statement to include the date of each transaction.

```

## My Approach

I mapped a rough idea of the classes I expected to have and how they should interact
with each other. I followed a strict TDD approach: (insert approach) I started off by building my Account class and then extracting methods into the Transaction and Statement classes when I felt they should belong there instead.

## On Reflection...

Looking back, there are a few things I feel like I could have done differently:

* I am not entirely happy with the fact that the Statement class is also responsible for printing itself. A separate Printer class perhaps?
* There is a lot of formatting logic going on in Transaction class - again, maybe having a printer class could have absorbed this logic.
* I quite liked the idea of the transactions array filled with Transaction objects in my Account class when I started. However, would it have been better if ```transactions = Statement.new``` instead, and my deposit and withdrawal methods had created new Transaction instances directly instead of doing so only at ```save_transaction```?

## Code Review Feedback

* ```account.balance``` does not need to be exposed as it detracts from the 'purity' of the code. It was recommended that calculating the balance does not need to belong in Account class at all, and could be restricted to the Statement class.
* ```account.make_withdrawal``` and ```account.make_deposit``` methods did not adhere strictly to SRP as they currently have two different responsibilities. 
