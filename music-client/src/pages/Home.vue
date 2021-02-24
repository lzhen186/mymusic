<template>
  <div class="home">
    <swiper />
    <div class="section" v-for="(item,index) in songList" :key="index">
      <div class="section-title">{{item.name}}</div>
      <content-list :contentList="item.list"></content-list>
    </div>
  </div>
</template>

<script>
import Swiper from "../components/Swiper";
import {getAllSinger, getAllSongList} from "../api/index";
import contentList from '../components/ContentList.vue';
export default {
  name: 'home',
  components: {
    Swiper,
    contentList
  },
  data () {
     return {
      songList: [
        {name: "歌单",list: []},
        {name: "歌手",list: []}
      ]
    }
  },
  created () {
    this.getSongList();
    this.getSinger();
  },
  methods: {
    getSongList(){               //获取前10条歌单
      getAllSongList().then((res) => {
        this.songList[0].list = res.slice(0,10);
      }).catch((err) =>{
        console.log(err);
      })
    },
    getSinger(){                //获取前十名歌手
      getAllSinger().then((res) => {
        this.songList[1].list = res.slice(0,10);
      }).catch((err) => {
        console.log(err)
      })
    }
  }
}
</script>

<style lang="scss" scoped>
@import '../assets/css/home.scss';
</style>
