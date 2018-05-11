drop table payments;

create table payments(
    PaymentID number(10),
    CustomerId number(10),
    ProductId number (10),
    TransactionDate date,
    CreditCard varchar2(50),
    CreditCardNumber varchar2(15)
);