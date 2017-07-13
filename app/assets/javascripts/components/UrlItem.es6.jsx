class UrlItem extends React.Component {
  render() {
    let url = this.props
    return(
      <tr>
        <td>{this.props.index}</td>
        <td>
          {this.props.url.short_url}
        </td>
        <td>
          {this.props.url.original_name}
        </td>
      </tr>
    );
  }
}
