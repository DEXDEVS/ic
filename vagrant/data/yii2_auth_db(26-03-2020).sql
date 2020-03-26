-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 09:59 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2_auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', 1, 1584967102),
('Moderator', 1, 1584967102),
('Moderator', 2, 1584963070),
('Moderator', 3, 1585168181);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//controller', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//crud', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//extension', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//form', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//index', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//model', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('//module', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/asset/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/asset/compress', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/asset/template', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/cache/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/cache/flush', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/cache/flush-all', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/cache/flush-schema', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/cache/index', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/debug/*', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/debug/default/*', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/debug/default/db-explain', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/debug/default/download-mail', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/debug/default/index', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/debug/default/toolbar', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/debug/default/view', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/debug/user/*', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/debug/user/reset-identity', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/debug/user/set-identity', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/departments/*', 3, NULL, NULL, NULL, 1584969476, 1584969476, NULL),
('/departments/create', 3, NULL, NULL, NULL, 1584969476, 1584969476, NULL),
('/departments/delete', 3, NULL, NULL, NULL, 1584969476, 1584969476, NULL),
('/departments/index', 3, NULL, NULL, NULL, 1584969476, 1584969476, NULL),
('/departments/update', 3, NULL, NULL, NULL, 1584969476, 1584969476, NULL),
('/departments/view', 3, NULL, NULL, NULL, 1584969476, 1584969476, NULL),
('/fixture/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/fixture/load', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/fixture/unload', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/help/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/help/index', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/help/list', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/help/list-action-options', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/help/usage', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/message/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/message/config', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/message/config-template', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/message/extract', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/create', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/down', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/fresh', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/history', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/mark', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/new', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/redo', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/to', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/migrate/up', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/serve/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/serve/index', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/site/*', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/site/error', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/site/index', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/site/login', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/site/logout', 3, NULL, NULL, NULL, 1584962757, 1584962757, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/*', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1584960042, 1584960042, NULL),
('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/login', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/logout', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/auth/registration', 3, NULL, NULL, NULL, 1584962760, 1584962760, NULL),
('/user-management/permission/*', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/create', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/delete', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/index', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/update', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/permission/view', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/role/*', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/create', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/delete', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/index', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/update', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/role/view', 3, NULL, NULL, NULL, 1584962759, 1584962759, NULL),
('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1584960042, 1584960042, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1584960042, 1584960042, NULL),
('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user/*', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1584962758, 1584962758, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1584960041, 1584960041, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1584960041, 1584960041, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1584960041, 1584960041, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1584960042, 1584960042, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1584960042, 1584960042, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1584960041, 1584960041, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1584960039, 1584960039, NULL),
('createDepartments', 2, 'Create Departments', NULL, NULL, 1584969781, 1584969781, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1584960041, 1584960041, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1584960041, 1584960041, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1584960042, 1584960042, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1584960041, 1584960041, 'userManagement'),
('Moderator', 1, 'Only Moderator', NULL, NULL, 1584962390, 1584962390, NULL),
('moderator_permission', 2, 'moderator_permission', NULL, NULL, 1584962546, 1584962546, 'userCommonPermissions'),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1584960042, 1584960042, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1584960042, 1584960042, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1584960042, 1584960042, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1584960041, 1584960041, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1584960042, 1584960042, 'userManagement');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Admin', 'assignRolesToUsers'),
('Admin', 'changeOwnPassword'),
('Admin', 'changeUserPassword'),
('Admin', 'createUsers'),
('Admin', 'deleteUsers'),
('Admin', 'editUsers'),
('Admin', 'viewUsers'),
('assignRolesToUsers', '/*'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('assignRolesToUsers', 'editUserEmail'),
('assignRolesToUsers', 'editUsers'),
('assignRolesToUsers', 'viewRegistrationIp'),
('assignRolesToUsers', 'viewUserRoles'),
('assignRolesToUsers', 'viewUsers'),
('changeOwnPassword', '/user-management/auth/change-own-password'),
('changeOwnPassword', 'changeUserPassword'),
('changeUserPassword', '/user-management/user/change-password'),
('changeUserPassword', 'viewUsers'),
('createDepartments', '/departments/create'),
('createDepartments', '/departments/index'),
('createDepartments', '/departments/view'),
('createUsers', '/user-management/user/create'),
('createUsers', 'viewUsers'),
('deleteUsers', '/user-management/user/bulk-delete'),
('deleteUsers', '/user-management/user/delete'),
('deleteUsers', 'viewUsers'),
('editUserEmail', 'viewUserEmail'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('editUsers', '/user-management/user/update'),
('editUsers', 'viewUsers'),
('Moderator', 'changeOwnPassword'),
('Moderator', 'createDepartments'),
('Moderator', 'viewUsers'),
('moderator_permission', '/user-management/*'),
('moderator_permission', 'assignRolesToUsers'),
('moderator_permission', 'changeOwnPassword'),
('moderator_permission', 'changeUserPassword'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('viewUsers', '/user-management/user/view');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('userCommonPermissions', 'User common permission', 1584960042, 1584960042),
('userManagement', 'User management', 1584960041, 1584960041);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_description` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `department_description`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Electrical Engineering', 'Electrical Engineering', '2019-11-20 07:20:08', '2019-11-20 07:20:08', 1, 3),
(2, 'Mechanical Engineering', 'Mechanical Engineering', '2019-11-15 14:48:56', '0000-00-00 00:00:00', 1, 0),
(3, 'Civil Engineering', 'Civil Engineering', '2019-11-15 14:48:59', '0000-00-00 00:00:00', 1, 0),
(8, 'Computer Engineering', 'Computer Engineering', '2019-11-19 09:38:18', '2019-11-19 09:38:18', 1, 1),
(9, 'Electronics Department', 'Department of Electronics', '2020-03-23 13:04:47', '2020-03-23 13:04:47', 1, 1),
(10, 'BSCS', '', '2020-03-23 13:07:17', '0000-00-00 00:00:00', 2, 0),
(11, 'BSIT', '', '2020-03-23 13:10:18', '0000-00-00 00:00:00', 2, 0),
(12, 'Physics Department', 'Department of Physics', '2020-03-23 13:26:53', '0000-00-00 00:00:00', 2, 0),
(13, 'xyz', '', '2020-03-23 18:17:55', '0000-00-00 00:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1584960031),
('m140608_173539_create_user_table', 1584960034),
('m140611_133903_init_rbac', 1584960036),
('m140808_073114_create_auth_item_group_table', 1584960037),
('m140809_072112_insert_superadmin_to_user', 1584960039),
('m140809_073114_insert_common_permisison_to_auth_item', 1584960039),
('m141023_141535_create_user_visit_log', 1584960040),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1584960040),
('m141121_194858_split_browser_and_os_column', 1584960040),
('m141201_220516_add_email_and_email_confirmed_to_user', 1584960040),
('m141207_001649_create_basic_user_permissions', 1584960042),
('m160815_081611_sw_status', 1585055130),
('m160815_081612_sw_transition', 1585055131),
('m160815_081613_sw_workflow', 1585055131),
('m160815_223711_sw_metadata', 1585055132),
('m160815_223712_relations', 1585055132);

-- --------------------------------------------------------

--
-- Table structure for table `sw_metadata`
--

CREATE TABLE `sw_metadata` (
  `workflow_id` varchar(32) NOT NULL,
  `status_id` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sw_status`
--

CREATE TABLE `sw_status` (
  `id` varchar(32) NOT NULL,
  `workflow_id` varchar(32) NOT NULL,
  `label` varchar(64) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sw_status`
--

INSERT INTO `sw_status` (`id`, `workflow_id`, `label`, `sort_order`) VALUES
('commit', 'Department', 'Commit', 3),
('Department', 'Department', 'Start', 1),
('End', 'Department', 'End', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sw_transition`
--

CREATE TABLE `sw_transition` (
  `workflow_id` varchar(32) NOT NULL,
  `start_status_id` varchar(32) NOT NULL,
  `end_status_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sw_transition`
--

INSERT INTO `sw_transition` (`workflow_id`, `start_status_id`, `end_status_id`) VALUES
('Department', 'commit', 'Department'),
('Department', 'commit', 'End'),
('Department', 'Department', 'commit'),
('Department', 'Department', 'End'),
('Department', 'End', 'commit'),
('Department', 'End', 'Department');

-- --------------------------------------------------------

--
-- Table structure for table `sw_workflow`
--

CREATE TABLE `sw_workflow` (
  `id` varchar(32) NOT NULL,
  `initial_status_id` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sw_workflow`
--

INSERT INTO `sw_workflow` (`id`, `initial_status_id`) VALUES
('Department', 'Department');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `superadmin` smallint(6) DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
(1, 'Superadmin', 'xASL2mazyk9NtRT9jxW9xE9dYPMAQZnE', '$2y$13$ZCzCyR3vQkCQhzoQ5s.x1OPByxgkjPDAyHL6H2UXLXwr5I.ktUgki', 'zfuT5PwMc1e2nPtV9dHWCidZ-SEKtL1C_1584970825', 1, 1, 1584960038, 1585051737, NULL, '', 'anasshafqat01@gmail.com', 1),
(2, 'Developer', 'RjfeYK4Da7fh3WtX985Nsme7AUKxW4Tf', '$2y$13$Qf2xfC8YKvdcxoaukjbtk.fdM4QsnAS5R58hVIIlTYBBqBjWnovDO', NULL, 1, 0, 1584963051, 1585051755, '::1', '', '', 0),
(3, 'Anas', 'PDFma1ZdBazC8UYBr7X4-90ZA4gqHyPF', '$2y$13$CmHueOBz5j5A.tLaBfXzzOGJrwywOPJr2AG5Sk4nEUR13YgLBuXqy', NULL, 1, 0, 1585080155, 1585080155, '::1', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(1, '5e7892918701c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(2, '5e7892d843521', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(3, '5e7893327ce90', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(4, '5e789445a29f6', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(5, '5e7894b0dba4c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(6, '5e78959addf4c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(7, '5e78967ea15e0', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(8, '5e7897afa79fc', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(9, '5e7897dddc746', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(10, '5e7897e2afaf3', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(11, '5e7898b87cebb', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(12, '5e78b40f7e9fd', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 0, 'Chrome', 'Windows'),
(13, '5e78b4ba21b64', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(14, '5e78b50e59fa9', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 0, 'Chrome', 'Windows'),
(15, '5e78b5b7d51c5', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(16, '5e78b68c124e9', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 0, 'Chrome', 'Windows'),
(17, '5e78b6b51296c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(18, '5e78b8dc93292', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 0, 'Chrome', 'Windows'),
(19, '5e78b9446da17', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(20, '5e78b97c491d0', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 0, 'Chrome', 'Windows'),
(21, '5e78ba9a861cf', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(22, '5e78bb9ec159f', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0', 2, 0, 'Firefox', 'Windows'),
(23, '5e78bcdbbb0a8', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(24, '5e78fcd061d81', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(25, '5e78fce304303', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 0, 'Chrome', 'Windows'),
(26, '5e78fd702ad4d', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(27, '5e79eb0a8d5a1', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(28, '5e79f42f24357', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(29, '5e79f8e762380', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(30, '5e79f8f44c9d6', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 0, 'Chrome', 'Windows'),
(31, '5e7a077ef100b', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 8385959, 'Chrome', 'Windows'),
(32, '5e7a08750fe0c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585055861, 'Chrome', 'Windows'),
(33, '5e7a08a80038c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585055912, 'Chrome', 'Windows'),
(34, '5e7a0917d0903', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585056023, 'Chrome', 'Windows'),
(35, '5e7a637859f9b', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585079160, 'Chrome', 'Windows'),
(36, '5e7a6714c2d7f', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585080084, 'Chrome', 'Windows'),
(37, '5e7a6b14f3165', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 3, 1585081108, 'Chrome', 'Windows'),
(38, '5e7b754ec1e67', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 3, 1585149262, 'Chrome', 'Windows'),
(39, '5e7b755b0e06c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585149275, 'Chrome', 'Windows'),
(40, '5e7b79b58a839', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585150389, 'Chrome', 'Windows'),
(41, '5e7b7ea18eb47', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585151649, 'Chrome', 'Windows'),
(42, '5e7b7ec91bb1c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585151689, 'Chrome', 'Windows'),
(43, '5e7b85624f7b1', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585153378, 'Chrome', 'Windows'),
(44, '5e7b8aea6f79c', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585154794, 'Chrome', 'Windows'),
(45, '5e7b92c274f6d', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585156802, 'Chrome', 'Windows'),
(46, '5e7b92eac1d25', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585156842, 'Chrome', 'Windows'),
(47, '5e7b9332afbb2', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585156914, 'Chrome', 'Windows'),
(48, '5e7b9353f0c5e', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585156947, 'Chrome', 'Windows'),
(49, '5e7b93c62d648', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585157062, 'Chrome', 'Windows'),
(50, '5e7b93c745c78', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585157063, 'Chrome', 'Windows'),
(51, '5e7b94b33a73f', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585157299, 'Chrome', 'Windows'),
(52, '5e7b94c5ed910', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585157317, 'Chrome', 'Windows'),
(53, '5e7b95437c140', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585157443, 'Chrome', 'Windows'),
(54, '5e7b9578880b1', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585157496, 'Chrome', 'Windows'),
(55, '5e7b95b406550', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 2, 1585157556, 'Chrome', 'Windows'),
(56, '5e7b95d0401cd', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585157584, 'Chrome', 'Windows'),
(57, '5e7b9a2a4e028', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585158698, 'Chrome', 'Windows'),
(58, '5e7ba6dc6dd7a', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585161948, 'Chrome', 'Windows'),
(59, '5e7ba6edb0a5a', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585161965, 'Chrome', 'Windows'),
(60, '5e7bba99041ad', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585167001, 'Chrome', 'Windows'),
(61, '5e7bba99eaf35', '::1', 'en', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', 1, 1585167001, 'Chrome', 'Windows'),
(62, '5e7bbc2066078', '192.168.0.10', 'en', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G5520) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36', 1, 1585167392, 'Chrome', 'Android'),
(63, '5e7bbeb112cb1', '192.168.0.10', 'en', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G5520) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36', 1, 1585168049, 'Chrome', 'Android'),
(64, '5e7bbfe92a2c2', '192.168.0.10', 'en', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G5520) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36', 1, 1585168361, 'Chrome', 'Android'),
(65, '5e7bc08d3d2b4', '192.168.0.10', 'en', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G5520) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36', 1, 1585168525, 'Chrome', 'Android'),
(66, '5e7bc2bec07ff', '192.168.0.10', 'en', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G5520) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36', 1, 1585169086, 'Chrome', 'Android'),
(67, '5e7bc2d18fe80', '192.168.0.10', 'en', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G5520) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36', 1, 1585169105, 'Chrome', 'Android');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_group_code` (`group_code`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `sw_metadata`
--
ALTER TABLE `sw_metadata`
  ADD UNIQUE KEY `workflow_status_id` (`workflow_id`,`status_id`,`key`);

--
-- Indexes for table `sw_status`
--
ALTER TABLE `sw_status`
  ADD PRIMARY KEY (`id`,`workflow_id`),
  ADD KEY `workflow_id` (`workflow_id`);

--
-- Indexes for table `sw_transition`
--
ALTER TABLE `sw_transition`
  ADD PRIMARY KEY (`workflow_id`,`start_status_id`,`end_status_id`),
  ADD KEY `workflow_start_status_id` (`workflow_id`,`start_status_id`),
  ADD KEY `workflow_end_status_id` (`workflow_id`,`end_status_id`);

--
-- Indexes for table `sw_workflow`
--
ALTER TABLE `sw_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `initial_status_id` (`initial_status_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
