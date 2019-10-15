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
    </div>
  );
}

export default App;
