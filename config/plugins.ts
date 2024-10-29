// export default () => ({});
export default ({ env }: { env: (key: string) => string }) => ({
    upload: {
        config: {
            provider: '@strapi-community/strapi-provider-upload-google-cloud-storage',
            providerOptions: {
                bucketName: env('GCS_BUCKET_NAME'),
                publicFiles: false,
                uniform: false,
                basePath: '',
            },
        },
    },
});