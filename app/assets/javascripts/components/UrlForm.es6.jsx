class UrlForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      original_name: '',
      errors: ''
    }

    this.handleChange = this.handleChange.bind(this);
    this.handleClick  = this.handleClick.bind(this);
  }

  handleClick() {
    const self = this;
    if(this.state.original_name) {
      $.ajax({
        method: 'POST',
        url: '/api/v1/urls',
        data: {url: this.state},
        success: (response, status, xhr) => {
          console.log(response)
        },
        error: (error) => {
          console.log(error)
          self.setState({ errors: error.responseText });
        }
      });
    }
    else {
      this.setState({errors: 'Name cannot be blank'})
    }
  }

  handleChange(e) {
    let name = e.target.name;
    this.setState({[name]: e.target.value});
  }

  render() {
    return(
      <div>
        <input type='text' onChange={this.handleChange} name='original_name'/>
        <div className='error'>{this.state.errors}</div>
        <button onClick={this.handleClick}>Create</button>
      </div>
    );
  }
}
