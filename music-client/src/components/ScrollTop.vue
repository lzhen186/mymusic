<template>
    <div class="scroll-top" @click="returnTop">
        <div class="box-in"></div>
    </div>
</template>

<script>
export default {
    name: 'scroll-top',
    methods: {
        returnTop() {
            //设置一个定时器
            const upRoll = setInterval(() => {
                const top = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop;      //每次获取页面被卷去的部分
                const speed = top / 20; //每次滚动多少（步长值）
                if(document.documentElement.scrollTop != 0){
                    document.documentElement.scrollTop -= speed;   //不在顶部 每次滚动到的位置
                    document.body.scrollTop -= speed;
                }else{
                    clearInterval(upRoll);  //回到顶部清理定时器
                }
            },8)
        }
    }
}
</script>

<style lang="scss" scoped>
@import '../assets/css/scroll-top.scss';
</style>