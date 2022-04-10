<template>
    <div>
        <form @click.prevent="shortURL">
            <div class="form-row">
                <div class="col-md-12 ml-auto mb-4 mb-md-0">
                    <div class="input-group input-group-lg">
                        <div class="input-group-prepend">
                            <span class="input-group-text"
                                ><i class="fa fa-link"></i
                            ></span>
                        </div>
                        <input
                            type="text"
                            name="link"
                            v-model="link"
                            class="form-control"
                            placeholder="Enter URL"
                        />

                        <button
                            class="btn btn-primary btn-lg btn-block"
                            type="submit"
                        >
                            Process
                        </button>
                    </div>
                    <div v-if="error" class="text-dander">{{ error }}</div>
                </div>
            </div>
        </form>
        <div class="container margin-top-20 urlShowtb">
            <div
                v-if="shorturl && shorturl.success"
                class="row bg-white margin-top-20 py-3 urlShow"
            >
                <div class="col-md-6 text-black-50 ">Original URL : 
                    <a :href="shorturl.data.mainlink"
                        >{{ shorturl.data.mainlink }}
                    </a>
                </div>
                <div class="col-md-6 text-black-50 ">Shortend URL : 
                    <a :href="'/url/' + shorturl.data.hash" target="_blank">{{
                        s_uri
                    }}</a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "URLShortenerComponent",

    data() {
        return {
            link: null,
            error: null,
            shorturl: {},
            s_uri: null,
        };
    },
    methods: {
        shortURL() {
            if (this.link && this.link !== "") {
                this.error = null;
                axios
                    .post("/URLShortener", {
                        link: this.link,
                    })
                    .then((res) => {
                        this.shorturl = res.data;
                        this.s_uri =
                            window.location.href +
                            "url/" +
                            this.shorturl.data.hash;
                    })
                    .catch((err) => {
                        console.log(err);
                    });
            } else {
                this.error = "Valid URL is required!";
            }
        },
    },
};
</script>
