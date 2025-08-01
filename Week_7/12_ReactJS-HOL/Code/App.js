import React, { useState } from 'react';
import LoginButton from './components/LoginButton';
import LogoutButton from './components/LogoutButton';
import GuestPage from './components/GuestPage';
import UserPage from './components/UserPage';

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  return (
    <div style={{ textAlign: 'center' }}>
      {isLoggedIn ? <UserPage /> : <GuestPage />}

      {isLoggedIn ? (
        <LogoutButton onClick={() => setIsLoggedIn(false)} />
      ) : (
        <LoginButton onClick={() => setIsLoggedIn(true)} />
      )}
    </div>
  );
}

export default App;
