import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { num1: "", num2: "", result: 0 };

    // your code here
  }

  // your code here

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1> // replace this with your code
      </div>
    );
  }
}

export default Calculator;
