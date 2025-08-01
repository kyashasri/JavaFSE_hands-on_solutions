
import React from "react";

const IndianPlayers = () => {
  const allPlayers = [
    "Virat", "Rohit", "Dhoni", "Rahul", "Pant", "Jadeja", "Bumrah", "Ashwin", "Shami", "Gill", "Surya"
  ];

  const oddPlayers = allPlayers.filter((_, i) => i % 2 !== 0);
  const evenPlayers = allPlayers.filter((_, i) => i % 2 === 0);

  const T20players = ["Virat", "Rohit", "Pant", "Surya"];
  const RanjiTrophy = ["Pujara", "Rahane", "Sarfaraz"];

  const allCombined = [...T20players, ...RanjiTrophy];

  return (
    <div>
      <h2>Even Team Players</h2>
      <ul>
        {evenPlayers.map((player, i) => (
          <li key={i}>{player}</li>
        ))}
      </ul>

      <h2>Odd Team Players</h2>
      <ul>
        {oddPlayers.map((player, i) => (
          <li key={i}>{player}</li>
        ))}
      </ul>

      <h2>Merged T20 + Ranji Players</h2>
      <ul>
        {allCombined.map((player, i) => (
          <li key={i}>{player}</li>
        ))}
      </ul>
    </div>
  );
};

export default IndianPlayers;
