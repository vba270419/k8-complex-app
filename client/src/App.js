import React, {Component} from 'react';
import './App.css';
import {BrowserRouter as Router, Link, Route} from 'react-router-dom';
import OtherPage from "./OtherPage";
import Fib from "./Fib";

class App extends Component {
    render() {
        return (
            <Router>
                <div className="App">
                    <header className="App-header">
                        <h1 className="App-title">Welcome to React 4</h1>
                        <Link to="/">Home</Link>
                        <Link to="/otherpage">Other Page</Link>
                    </header>
                    <div>
                        <Route exact path="/" component={Fib}/>
                        <Route path="/otherpage" component={OtherPage}/>
                    </div>
                </div>
            </Router>
        );
    }
}

export default App;
