/*
  Warnings:

  - You are about to alter the column `status` on the `appointments` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum(EnumId(0))`.

*/
-- AlterTable
ALTER TABLE `appointments` MODIFY `status` ENUM('Confirmed', 'Cancelled', 'Payed') NOT NULL DEFAULT 'Confirmed';
