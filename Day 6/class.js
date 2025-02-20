class Account {
    constructor(accNo, holderName, balance) {
        this.accNo = accNo;
        this.holderName = holderName;
        this.balance = balance;
    }

    getBalance() {
        return this.balance;
    }

    deposit(amount) {
        this.balance += amount;
        console.log(`${amount} is credited to the account No *****${this.accNo.slice(-4)}. Available balance: ${this.balance}`);
    }

    withdraw(amount) {
        if (amount > this.balance) {
            console.log(`Insufficient balance. Available balance: ${this.balance}`);
        } else {
            this.balance -= amount;
            console.log(`${amount} is debited from the account No *****${this.accNo.slice(-4)}. Available balance: ${this.balance}`);
        }
    }
}

// Example usage:
const myAccount = new Account('1234567890', 'Manushree', 5000);
myAccount.getBalance(); // 5000
myAccount.deposit(1500); // 1500 is credited to the account
myAccount.withdraw(2000); // 2000 is debited from the account
myAccount.withdraw(7000); // Insufficient balance
console.log(myAccount.getBalance()); // Check the balance after transactions
