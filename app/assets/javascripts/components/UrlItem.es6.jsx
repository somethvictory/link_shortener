class UrlItem extends React.Component {
  render() {
    let url = this.props
    return(
      <tr>
        <td>{this.props.index}</td>
        <td>
          <a href={this.props.url.short_url} target='_blank'>{this.props.url.short_url}</a>
        </td>
        <td>
          {this.props.url.original_name}
        </td>
      </tr>
    );
  }
}
