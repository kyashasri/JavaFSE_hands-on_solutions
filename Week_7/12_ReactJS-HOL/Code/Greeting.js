function Greeting(props) {
  if (props.isLoggedIn) {
    return <h2>Welcome back</h2>;
  } else {
    return <h2>Please sign up.</h2>;
  }
}
export default Greeting;
