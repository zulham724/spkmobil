<template>
<section class="ftco-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-5 ftco-animate">
                <h3 class="mb-4">Varian Warna</h3>
                <div class="row">
                    
                    <div class="col-4 col-sm-3 col-md-2" v-for="(model_color, mf) in product_model.model_colors" :key="model_color.id">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="varian_warna" :id="`warna-${model_color.name}`" class="custom-control-input varian-warna" :data-id="mf" :value="model_color.name" :checked="mf==0 ? true : false" @click="selected = model_color">
                            <label class="custom-control-label" :for="`warna-${model_color.name}`">Warna {{  (mf+1) }}</label>
                        </div>
                    </div>

                </div>
                <div class="row my-3 py-2 border-top border-secondary">
                    <div class="col-sm-12">
                        <h4 class="text-center nama-warna">{{selected.name}}</h4>
                    </div>
                    <div class="col-sm-8 mx-auto">
                        <img class="img-fluid gambar-warna" :src="`/storage/${selected.image}`">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</template>

<script>
export default {
    props:{
        product_model: {}
    },
    data(){
        return{
            selected:{}
        }
    },
    mounted(){
        this.selected = this.product_model.model_colors[0]
    }
}
</script>

<style>

</style>
