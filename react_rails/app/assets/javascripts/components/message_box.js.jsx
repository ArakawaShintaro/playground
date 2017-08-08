var MessageBox = React.createClass({

  /*
    stateを更新することでルート以下のコンポーネントのrenderが呼ばれ、stateの状態を表せ
  */

   getInitialState: function() {
    return {
      messages: [
        { id: 1, user: 'Tom',   text: 'Good morning' },
        { id: 2, user: 'John',  text: 'Good afternoon' },
        { id: 3, user: 'Emily', text: 'Good evening' }
      ]
    };

  /*
  サーバーからメッセージ一覧を取得し、
  setState({ messages: messages })でstateにメッセージを設定
  */
  componentDidMount: function() {
    $.ajax({
      // url="/messages"
      url: this.props.url,
      dataType: 'json',
      cache: false,
    })
    .then(
        (messages) => {
          this.setState({ messages: messages });
      },
        (_xhr, status, err) => {
          console.error(this.props.url, status, err.toString());
        }
      );
  },

  // What 配列やイテレータのそれぞれの子要素はユニークなkey属性を付与。 why Reactのパフォーマンスのため
  handleMessageSubmit: function(message) {
    message.id = new Date();
    var newMessages = this.state.messages.concat(message);
    // setStateは連想配列を渡す
    this.setState({ messages: newMessages });
  },

   render: function() {
   var messageItems = this.state.messages.map(function(message) {
      return (
        <MessageItem key={message.id} message={message}/>
      );
    });

     return (
       <div className="messageBox">
        {messageItems}
        <MessageForm onMessageSubmit={this.handleMessageSubmit} />
       </div>
     );
   }
 });
