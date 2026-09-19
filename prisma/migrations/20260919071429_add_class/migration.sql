/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `Customers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[phone]` on the table `Customers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[service_name]` on the table `Services` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `Customers_email_key` ON `Customers`(`email`);

-- CreateIndex
CREATE UNIQUE INDEX `Customers_phone_key` ON `Customers`(`phone`);

-- CreateIndex
CREATE UNIQUE INDEX `Services_service_name_key` ON `Services`(`service_name`);
