import React, { useState } from "react";

function Currencyconvertor() {
  const [amount, setAmount] = useState("");
  const [currency, setCurrency] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();
    if (currency.toLowerCase() === "euro") {
      const converted = amount * 80;
      alert(`Converting to Euro Amount is ${converted}`);
    } else {
      alert("Please enter 'Euro' in the currency field.");
    }
  };

  return (
    <div>
      <h1 style={{ color: "green" }}>Currency Convertor!!!</h1>
      <form onSubmit={handleSubmit}>
        <label>
          Amount:{" "}
          <input
            type="number"
            value={amount}
            onChange={(e) => setAmount(e.target.value)}
          />
        </label>
        <br />
        <br />
        <label>
          Currency:{" "}
          <textarea
            type="text"
            value={currency}
            onChange={(e) => setCurrency(e.target.value)}
          />
        </label>
        <br />
       <button type="submit" style={{ marginLeft: "80px" }}>Submit</button>

      </form>
    </div>
  );
}

export default Currencyconvertor;
