<template>
	<div class="col-sm-6 col-md-12 col-lg-6">
            <button @click="download()" class="btn btn-md btn-block btn-primary mb-3" name="download" >Download Brosur</button>
    </div>
</template>

<script>
export default {

  name: 'DownloadBrochureComponent',
    props:{
        product_model:null
    },
  data() {
    return {

    };
  },
  methods:{
      download(){
          console.log(eval(this.product_model.document))
          const brochure = eval(this.product_model.document)[0].download_link
          console.log(brochure)
        window.location.href = `/storage/${brochure}`
      }
  }
};
</script>

<style lang="css" scoped>
</style>
