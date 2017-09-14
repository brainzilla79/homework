import React from 'react';

import GiphysIndex from './giphys_index';


export default class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchTerm: ""};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    this.setState({searchTerm: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    const searchTerm = this.state.searchTerm.split(' ').join('+');
    this.props.fetchSearchGiphys(searchTerm);
    console.log(this.props.giphys);
  }

  render() {
    return (
      <div>
        <input type="text" id="searchText" value={this.state.searchTerm} onChange={this.handleChange}/>
        <input type="submit" value="Search" onClick={this.handleSubmit}/>
        <GiphysIndex giphys={this.props.giphys}/>
      </div>
    );
  }
}
