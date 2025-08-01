
import React from "react";

const ListofPlayers = () => {
  const players = [
    { name: "Virat", score: 85 },
    { name: "Rohit", score: 55 },
    { name: "Dhoni", score: 90 },
    { name: "Rahul", score: 45 },
    { name: "Pant", score: 75 },
    { name: "Jadeja", score: 30 },
    { name: "Bumrah", score: 78 },
    { name: "Ashwin", score: 60 },
    { name: "Shami", score: 95 },
    { name: "Gill", score: 88 },
    { name: "Surya", score: 40 },
  ];

  const below70 = players.filter(player => player.score < 70);

  return (
    <div>
      <h2>All Players</h2>
      <ul>
        {players.map((player, index) => (
          <li key={index}>
            {player.name} - {player.score}
          </li>
        ))}
      </ul>

      <h2>Players with score below 70</h2>
      <ul>
        {below70.map((player, index) => (
          <li key={index}>
            {player.name} - {player.score}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default ListofPlayers;
