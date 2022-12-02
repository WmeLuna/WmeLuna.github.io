import { DiscStatus } from "./Lanyard";
import { Navbar, NavItem } from "./Navbar";

function App() {
  return (
    <div className="App">
    <Navbar>
      <NavItem Name="Home" Active="active"></NavItem>
      <NavItem Name="Github" Link="https://github.com/WmeLuna"></NavItem>
      <NavItem Name="Instagram" Link="https://www.instagram.com/wmeluna"></NavItem>
      <NavItem Name="TikTok" Link="https://www.tiktok.com/@wmeluna"></NavItem>
    </Navbar>
    <div className="about">
      <img src="https://avatars.githubusercontent.com/u/46545277" alt="pfp"></img>
      <div className="about-text">
        <h1>About me:</h1>
        <h2>I'm a <span className="trans">trans</span> developer (she/her)</h2>
        <h2>I mainly code things for Discord</h2>
        <h2>I am currently <DiscStatus></DiscStatus> on Discord.</h2>
      </div>
    </div>
    </div>
  );
}

export default App;
