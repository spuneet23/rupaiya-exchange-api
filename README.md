# rupaiya-exchange-api
REST API built on YII 2 Advanced Framework

##API Resources

**GET /api/v1/loans**
**GET /api/v1/loans/:id**
**GET /api/v1/loans/:id/borrower**
**POST /api/v1/loans**
**PATCH /api/v1/loans/1**
**DELETE /api/v1/loans/2**

###Example: http://localhost/loans_api/api/web/v1/loans

Response body:

```
[
  {
    "Amount": 100000,
    "Status": 0,
    "Amount Left": 100000,
    "Interest Rate": 18,
    "Purpose": "Personal",
    "Tenure": 2,
    "Location": "Delhi"
  },
  {
    "Amount": 180000,
    "Status": 5,
    "Amount Left": 171000,
    "Interest Rate": 16,
    "Purpose": "Business",
    "Tenure": 3,
    "Location": "Mumbai"
  },
  {
    "Amount": 420000,
    "Status": 0,
    "Amount Left": 420000,
    "Interest Rate": 19,
    "Purpose": "Marriage",
    "Tenure": 2,
    "Location": "Delhi"
  },
  {
    "Amount": 420000,
    "Status": 0,
    "Amount Left": 420000,
    "Interest Rate": 19,
    "Purpose": "Marriage",
    "Tenure": 2,
    "Location": "Delhi"
  },
  {
    "Amount": 34.45,
    "Status": 0,
    "Amount Left": 34.45,
    "Interest Rate": 17.2,
    "Purpose": "Education",
    "Tenure": 3,
    "Location": "Bangalore"
  },
  {
    "Amount": 380000,
    "Status": 0,
    "Amount Left": 380000,
    "Interest Rate": 17.2,
    "Purpose": "Education",
    "Tenure": 3,
    "Location": "Karnataka"
  }
]
```


##GET /api/v1/loans/:id

###Example: http://localhost/loans_api/api/web/v1/loans/2

Response body:

```
{
  "Amount": 180000,
  "Status": 5,
  "Amount Left": 171000,
  "Interest Rate": 16,
  "Purpose": "Business",
  "Tenure": 3,
  "Location": "Mumbai"
}
```

##GET /api/v1/loans/:id/borrower

###Example: http://localhost/loans_api/api/web/v1/loans/2/borrower

Response body:

```
{
  "Borrower ID": 2,
  "Loan ID": 2,
  "Name": "Ramesh",
  "Age": 35,
  "Location": "Mumbai",
  "Cibil Score": 825,
  "Employment Type": "Business",
  "Annual Income": 500000,
  "Company": "Swiggy"
}
```
