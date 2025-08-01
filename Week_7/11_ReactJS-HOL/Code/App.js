import React, { useState } from "react";
import Currencyconvertor from "./components/Currencyconvertor";

import "./App.css";

function App() {
  const [count, setCount] = useState(0);

  const incrementValue = () => {
    setCount(count + 1);
    sayHello();
  };

  const decrementValue = () => {
    setCount(count - 1);
  };

  const sayHello = () => {
    alert("Hello! Member1");
  };

  const sayWelcome = (msg) => {
    alert(`Welcome`);
  };

  const handleClick = (e) => {
    alert("I was clicked");
  };

  return (
    <div className="App">
      <p>{count}</p>
      <button onClick={incrementValue}>Increment</button><br />
      <button onClick={decrementValue}>Decrement</button><br />
      <button onClick={() => sayWelcome("Member1")}>Say welcome</button><br />
      <button onClick={handleClick}>Click on me</button>

   
      <Currencyconvertor />
    </div>
  );
}

export default App;
