<template>
    <div class="search-song-Lists">
        <content-list :contentList="albumDatas"></content-list>
    </div>
</template>

<script>
import {mixin} from '../../mixins';
import ContentList from '../../components/ContentList';
import { getSongListOfLikeTitle } from '../../api/index';

export default {
    name: 'search-song-lists',
    mixins: [mixin],
    components:{
        ContentList
    },
    data(){
        return{
            albumDatas: []
        }
    },
    mounted(){
        this.getSearchList();
    },
    methods:{
        getSearchList(){
            if(!this.$route.query.keywords){
                this.notify('您输入的内容为空','warning')
            }else{
                getSongListOfLikeTitle(this.$route.query.keywords)
                .then(res => {
                    if(res.length!=0){
                        this.albumDatas = res
                    }else{
                        this.notify('暂无该歌单','warning')
                    }
                })
            }
        }
    }
}
</script>

<style lang="scss" scoped>
@import '../../assets/css/search-song-Lists.scss';
</style> 