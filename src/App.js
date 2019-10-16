import React from 'react';
import logo from './alc.jpg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          <code>ALC 4.0 Challenge:</code> Package and deploy a React App in Docker container
        </p>
        Developed by 
        <a
          className="App-link"
          href="https://linkedin.com/in/calistus-igwilo"
          target="_blank"
          rel="noopener noreferrer"
        >
          Calistus Igwilo
        </a>
        <ul>
          <li><a className="App-link" href="https://github.com/calistus-igwilo">Github</a></li>
          <li><a className="App-link" href="https://linkedin.com/in/calistus-igwilo">LinkedIn</a></li>
          <li><a className="App-link" href="https://hub.docker.com/u/icalistus">Docker</a></li>

        </ul>
      </header>
      <div className="App">
        <p>
        This App is packaged in Docker image and can be pulled from: 
        <a 
          className="App-link" 
          href="icalistus/react-app"
        >
          icalistus/react-app
        </a>
        </p>
        To run the app use the command: <code>docker container start icalistus/react-app</code>
      </div>
    </div>
  );
}

export default App;
