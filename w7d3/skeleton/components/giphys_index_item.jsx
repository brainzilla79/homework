import React from 'react';

export default class GiphysIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <img src={this.props.giphy.images.original.url}/>
      </div>
    );
  }
}
