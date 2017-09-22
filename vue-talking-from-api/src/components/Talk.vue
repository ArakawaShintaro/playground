<template>
<div>
  <el-card class="box-card">

    <div slot="header">
      <span style="line-height: 36px;">会話ページ</span>
    </div>

    <div>
      <el-input
        placeholder="ご機嫌いかがですか？"
        v-model="input"
        >
      </el-input>
    </div>

    <br>

    <div class="reply">
      返答：{{ reply }}
    </div>

    <br>

    <div>
      <el-button
        type="primary"
        class="button"
        v-on:click='submit'>
        送信
      </el-button>
    </div>

    <br>

    <div>
      <router-link to="/">
        <el-button type="primary" class="button">トップへ戻る</el-button>
      </router-link>
    </div>

  </el-card>
</div>
</template>

<script>
  import axios from 'axios'

  export default {
    data () {
      return {
        input: '',
        reply: 'AIだよ！返事するよー'
      }
    },
    methods: {
      submit () {
        let formdata = new FormData()
        formdata.append('apikey', 'xxxxxxx')
        formdata.append('query', this.input)
        axios.post('https://api.a3rt.recruit-tech.co.jp/talk/v1/smalltalk', formdata).then((response) => {
          let replyWordFromApi = response.data.results[0].reply
          this.reply = replyWordFromApi
        })
      }
    }
  }
</script>
