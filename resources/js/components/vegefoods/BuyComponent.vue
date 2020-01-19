<template>
	<div class="col-sm-6 col-md-12 col-lg-6">
        <a href="#" @click="dialog = true" class="btn btn-md btn-block btn-primary mb-3" id="btn-beli" data-toggle="modal" data-target="#beliMobilModal">Beli Mobil</a>
        <v-dialog
          v-model="dialog"
          width="500"
          transition="dialog-transition"
        >
          <v-card>
            <h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
            consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
            cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
            proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</h1>
          </v-card>
        </v-dialog>
    </div>
</template>

<script>
export default {

  name: 'BuyComponent',

  data() {
    return {
    	dialog:false
    };
  },
};
</script>

<style lang="css" scoped>
</style>
