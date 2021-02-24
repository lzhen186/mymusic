<template>
    <div class="singer">
        <ul class="singer-header">
            <li v-for="(item,index) in singerStyle" :key="index" @click="handleChangeView(item)"
                :class="{active:item.name==activeName}">
                {{item.name}}
            </li>
        </ul>
        <div>
            <content-list :contentList="data"></content-list>
            <div class="pagination">
                <el-pagination @current-change="handleCurrentChange" background layout="total,prev,pager,next"
                    :current-page="currentPage" :page-size="pageSize" :total="albumDatas.length">
                </el-pagination>
            </div>
        </div>
    </div>
</template>

<script>
import {mixin} from '../mixins';
import ContentList from '../components/ContentList';
import { getAllSinger,getSingerOfSex } from '../api/index';
import {singerStyle} from '../assets/data/singer';

export default {
    name: 'singer',
    mixins: [mixin],
    components:{
        ContentList
    },
    data(){
        return{
            albumDatas: [],      //歌手数据
            pageSize: 15,       //页面大小
            currentPage: 1,     //当前页，默认第一页
            singerStyle: [],           //风格
            activeName: ''          //当前风格
        }
    },
    computed:{
        //计算当前表格中的数据
        data(){
            return this.albumDatas.slice((this.currentPage - 1)*this.pageSize,this.pageSize*this.currentPage)
        }
    },
    mounted(){
        this.activeName = '全部歌手';
        this.singerStyle = singerStyle;
        this.getSingerList();
    },
    methods:{
        getSingerList(){
            getAllSinger()
            .then(res => {
                this.currentPage = 1;
                this.albumDatas = res
            })
        },
        //获取当前页
        handleCurrentChange(val){
            this.currentPage = val;
        },
        //根据sex显示对应的歌手
        handleChangeView(item){
            this.activeName = item.name;
            this.albumDatas = [];
            if(item.name == '全部歌手'){
                this.getSingerList();
            }else{
                this.SingerOfSex(item.type);
            }
        },
        //根据sex查询对应的歌手
        SingerOfSex(sex){
            getSingerOfSex(sex)
            .then(res => {
                this.currentPage = 1;
                this.albumDatas = res;
            })
        }   
    }
}


</script>

<style lang="scss" scoped>
@import '../assets/css/singer.scss';
</style> 