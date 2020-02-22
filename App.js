import React from 'react';
import './App.css';

/*class Item extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      BrandGroup: items[this.props.num][0],
      GenericGroup: items[this.props.num][1],
      Amount: items[this.props.num][2],
      AmtLabel: "oz"
    };
  }

  formRow() {
    return  this.BrandGroup + " " +
            this.GenericGroup + " " +
            this.Amount + " " +
            this.AmtLabel;
  }

  render() {
    return(
      <div>{this.formRow()}</div>
    );
  }
}

class Pantry extends React.Component {

  render() {
    var rows = [];
    for (var i = 0; i < items.length; i++) {
      rows.push(i => <Item num={i} />);
    }
    return (
      <tbody>{rows}</tbody>
    )
  };
}*/

var items = [
  ["Giant Eagle", "milk", 69, "oz"],
  ["Oreo", "cookie", 420, "oz"]
];

class Item extends React.Component {
    render() {
      var cols = [];
      for (var i=0; i<items[this.props.num].length; i++) {
        cols.push(<td class="pantry-col">{items[this.props.num][i]}</td>)
    }
    return(
        <tr class="pantry-row">
          {cols}
        </tr>
    );
  }
}

class Pantry extends React.Component {
  render() {
    var rows = [];
    for (var i = 0; i<items.length; i++) {
      rows.push(<Item num={i} />);
    }
    return (
      <table border="1">
        <tbody border="1">
          {rows}
        </tbody>
      </table>
    )
  };
}

class Recipe extends React.Component {
    render() {
      var cols = [];
      for (var i=0; i<items[this.props.num].length; i++) {
        cols.push(<td class="pantry-col">{items[this.props.num][i]}</td>)
    }
    return(
        <tr class="pantry-row">
          {cols}
        </tr>
    );
  }
}

class RecipeCollection extends React.Component {
  render() {
    var rows = [];
    for (var i = 0; i<items.length; i++) {
      rows.push(<Recipe num={i} />);
    }
    return (
      <table border="1">
        <tbody border="1">
          {rows}
        </tbody>
      </table>
    )
  };
}

class AddItem extends React.Component {
  render() {
    return (
      <div>Please scan.</div>
    )
  };
}

class Page extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      CurrentComponent: 0,
    };
    this.Toggle = this.Toggle.bind(this);
    this.GetComponent = this.GetComponent.bind(this);
  }

  Toggle(i) {
    if (this.state.CurrentComponent !== i) {
      this.setState({CurrentComponent: i});
    }
  }

  GetComponent() {
    if (this.state.CurrentComponent === 0) {
      return (<Pantry/>);
    }
    else if (this.state.CurrentComponent === 1) {
      return (<RecipeCollection/>);
    }
    else if (this.state.CurrentComponent === 2) {
      return (<AddItem/>);
    }
  }

  render() {
    return (
      <div>
        <nav class="navbar navbar-expand navbar-light bg-light">
          <div class="">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                <div class="nav-link" onClick={() => {this.Toggle(0)}}>
                  My Pantry
                </div>
              </li>
              <li class="nav-item"
                onClick={() => {this.Toggle(1)}}>
                Recipes</li>
              <li class="nav-item"
                onClick={() => {this.Toggle(2)}}>
                Add Item</li>
            </ul>
          </div>
        </nav>
        <div>
          {this.GetComponent()}
        </div>
      </div>
    )
  }
}

function App() {
  return (
    <div class="container">
      <Page/>
    </div>
  );
}

export default App;
