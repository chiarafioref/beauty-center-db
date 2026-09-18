-- CreateTable
CREATE TABLE `Customers` (
    `customer_id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`customer_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Employees` (
    `employee_id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `role` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`employee_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Service_category` (
    `category_id` INTEGER NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`category_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Services` (
    `service_id` INTEGER NOT NULL AUTO_INCREMENT,
    `service_name` VARCHAR(191) NOT NULL,
    `duration_minutes` INTEGER NOT NULL,
    `price` DECIMAL(10, 2) NOT NULL,
    `category_id` INTEGER NOT NULL,

    PRIMARY KEY (`service_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Appointments` (
    `appointment_id` INTEGER NOT NULL AUTO_INCREMENT,
    `date_time` DATETIME(3) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `customer_id` INTEGER NOT NULL,
    `employee_id` INTEGER NOT NULL,
    `service_id` INTEGER NOT NULL,

    PRIMARY KEY (`appointment_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Payments` (
    `payment_id` INTEGER NOT NULL AUTO_INCREMENT,
    `amount` DECIMAL(10, 2) NOT NULL,
    `payment_method` VARCHAR(191) NULL,
    `appointment_id` INTEGER NOT NULL,

    PRIMARY KEY (`payment_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Reviews` (
    `review_id` INTEGER NOT NULL AUTO_INCREMENT,
    `rating` INTEGER NOT NULL,
    `customer_id` INTEGER NOT NULL,
    `appointment_id` INTEGER NOT NULL,

    PRIMARY KEY (`review_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Availability` (
    `availability_id` INTEGER NOT NULL AUTO_INCREMENT,
    `day_of_week` VARCHAR(191) NOT NULL,
    `employee_id` INTEGER NOT NULL,

    PRIMARY KEY (`availability_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Services` ADD CONSTRAINT `Services_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `Service_category`(`category_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Appointments` ADD CONSTRAINT `Appointments_customer_id_fkey` FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Appointments` ADD CONSTRAINT `Appointments_employee_id_fkey` FOREIGN KEY (`employee_id`) REFERENCES `Employees`(`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Appointments` ADD CONSTRAINT `Appointments_service_id_fkey` FOREIGN KEY (`service_id`) REFERENCES `Services`(`service_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Payments` ADD CONSTRAINT `Payments_appointment_id_fkey` FOREIGN KEY (`appointment_id`) REFERENCES `Appointments`(`appointment_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Reviews` ADD CONSTRAINT `Reviews_customer_id_fkey` FOREIGN KEY (`customer_id`) REFERENCES `Customers`(`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Reviews` ADD CONSTRAINT `Reviews_appointment_id_fkey` FOREIGN KEY (`appointment_id`) REFERENCES `Appointments`(`appointment_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Availability` ADD CONSTRAINT `Availability_employee_id_fkey` FOREIGN KEY (`employee_id`) REFERENCES `Employees`(`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
