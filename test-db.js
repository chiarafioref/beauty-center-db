import { client } from "./prisma-client.js";

const newServices = await client.services.create({
    data: {
        service_name: "Massaggio",
        duration_minutes: 30,
        price: "40.00",
        category: {
            create: {
                category_name: "Massaggio"
            }
        }
    }
}
);

await client.$disconnect();